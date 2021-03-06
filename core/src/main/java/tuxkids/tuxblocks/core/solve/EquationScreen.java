package tuxkids.tuxblocks.core.solve;

import playn.core.Image;
import playn.core.ImageLayer;
import playn.core.util.Clock;
import tripleplay.game.ScreenStack;
import tuxkids.tuxblocks.core.GameState;
import tuxkids.tuxblocks.core.screen.GameScreen;
import tuxkids.tuxblocks.core.solve.blocks.BlockController;
import tuxkids.tuxblocks.core.solve.blocks.BlockController.Parent;
import tuxkids.tuxblocks.core.solve.blocks.Equation;
import tuxkids.tuxblocks.core.solve.build.BuildScreen;
import tuxkids.tuxblocks.core.utils.PlayNObject;

/**
 * Base for {@link BuildScreen} and {@link SolveScreen}, handles
 * the display and manipulation of an equation made of Blocks.
 */
public abstract class EquationScreen extends GameScreen implements Parent {
	
	protected Equation originalEquation;
	// the BlockController does all the heavy lifting
	protected BlockController controller;
	// two layers to display the current equation, so
	// one can cross-fade into the other
	protected ImageLayer eqLayer, eqLayerOld;
	protected Image lastEqImage;

	/** The x-percentage of the center of the displayed equation */
	protected float equationXPercent() {
		return 0.5f;
	}
	
	public void setEquation(Equation equation) {
		this.originalEquation = equation;
		controller.setEquation(equation.copy());
	}
	
	public boolean solved() {
		return controller.solved();
	}

	public Equation equation() {
		return controller.equation();
	}
	
	protected float controllerWidth() {
		return width();
	}
	
	public EquationScreen(ScreenStack screens, GameState state) {
		super(screens, state);
		
		header.layerAddable().setDepth(-1);
		
		controller = new BlockController(this, controllerWidth(), height() - header.height());
		controller.setEquationImageHeight(header.height());
		controller.layer().setTy(header.height());
		layer.add(controller.layer());
		
		eqLayer = graphics().createImageLayer();
		eqLayer.setImage(controller.equationImage());
		layer.add(eqLayer);
		
		eqLayerOld = graphics().createImageLayer();
		eqLayerOld.setImage(controller.equationImage());
		eqLayerOld.setAlpha(0);
		layer.add(eqLayerOld);
	}
	
	@Override
	public void wasRemoved() {
		super.wasRemoved();
		controller.clear();
	}
	
	/** Reset the current equation to it's original state */
	protected void reset() {
		controller.setEquation(originalEquation.copy());
	}
	
	@Override
	public void update(int delta) {
		super.update(delta);
		controller.update(delta);
		eqLayer.setImage(controller.equationImage());
		
		if (lastEqImage != controller.equationImage()) {
			// update the equation image by cross-fading to the new one
			eqLayer.setAlpha(0);
			eqLayerOld.setImage(lastEqImage);
			eqLayerOld.setTranslation(eqLayer.tx(), eqLayer.ty());
			eqLayerOld.setAlpha(1);
			lastEqImage = controller.equationImage();
		}
		if (eqLayer.image() != null) {
			// center the equation image to the HeaderLayer's center
			eqLayer.setTranslation(
					header.width() * equationXPercent() - eqLayer.width() / 2 + header.tx(), 
					(header.height() - eqLayer.height()) / 2);
		}
	}
	
	@Override
	public void paint(Clock clock) {
		super.paint(clock);
		controller.paint(clock);
		// cross-fade the equation layers
		eqLayer.setAlpha(PlayNObject.lerpTime(eqLayer.alpha(), 1, 0.99f, clock.dt(), 0.01f));
		eqLayerOld.setAlpha(PlayNObject.lerpTime(eqLayerOld.alpha(), 0, 0.99f, clock.dt(), 0.01f));
	}
}
