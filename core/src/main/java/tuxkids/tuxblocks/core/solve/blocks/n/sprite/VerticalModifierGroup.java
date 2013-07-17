package tuxkids.tuxblocks.core.solve.blocks.n.sprite;

import java.util.ArrayList;
import java.util.List;

import tuxkids.tuxblocks.core.solve.blocks.n.TimesBlock;
import tuxkids.tuxblocks.core.solve.blocks.n.VerticalBlock;
import tuxkids.tuxblocks.core.solve.blocks.n.VerticalGroup;

public class VerticalModifierGroup extends ModifierGroup {

	protected List<ModifierBlockSprite> timesBlocks;
	protected List<ModifierBlockSprite> divBlocks;
	
	public VerticalModifierGroup(Sprite parent) {
		super(parent);
		timesBlocks = new ArrayList<ModifierBlockSprite>();
		divBlocks = new ArrayList<ModifierBlockSprite>();
	}

	@Override
	protected void updateChildren(float base, float dt) {
		float y = parentRect.y - modSize();
		for (ModifierBlockSprite block : timesBlocks) {
			block.interpolateRect(rect.x, y, rect.width, parentRect.maxY() - y, base, dt);
			y -= modSize();
		}

//		y = parentRect.maxY() + modSize();
		y = parentRect.maxY();
		for (ModifierBlockSprite block : divBlocks) {
//			block.interpolateRect(rect.x, parentRect.centerY(), rect.width, y - parentRect.centerY(), base, dt);
			block.interpolateRect(rect.x, y, rect.width, modSize(), base, dt);
			y += block.height();
		}
	}

	@Override
	protected void updateRect(float base, float dt) {
//		layer.setTy(lerpTime(layer.ty(), ty, base, dt, 1f));
//		layer.setTy(ty);
		rect.y = parentRect.y - timesBlocks.size() * modSize();
		
		rect.x = parentRect.x;
		rect.width = parentRect.width;
		if (timesBlocks.size() > 0) {
			rect.x -= wrapSize();
			rect.width += 2 * wrapSize();
		}
		rect.height = parentRect.height + children.size() * modSize();
//		if (divBlocks.size() > 0) {
//			height = divBlocks.get(divBlocks.size() - 1).bottom();
//		}
	}
	
	@Override
	protected void removeChild(ModifierBlockSprite child) {
		super.removeChild(child);
		timesBlocks.remove(child);
		divBlocks.remove(child);
	}
	
	@Override
	protected void addChild(ModifierBlockSprite child) {
		super.addChild(child);
		if (child instanceof TimesBlockSprite) {
			timesBlocks.add(child);
		} else {
			divBlocks.add(child);
		}
	}

	int time = 1500;
	@Override
	public void update(int delta) {
		super.update(delta);
//		time += delta;
//		if (modifiers != null && time > 3000 && children.size() > 0 && modifiers.modifiers != null) {
//			time = 0;
//			ModifierBlockSprite mod = children.remove(0);
//			mod.layer.destroy();
//			timesBlocks.remove(mod);
//			divBlocks.remove(mod);
//			
//		}
	}

	@Override
	protected ModifierGroup createModifiers() {
		return new HorizontalModifierGroup(this);
	}

	@Override
	protected boolean canAdd(ModifierBlockSprite sprite) {
		return sprite instanceof VerticalModifierSprite;
	}
}