package com.effect
{
	import com.system.*;
	import com.gameObject.*;
	import com.skill.*;
	
	public class AddBuffEffect extends EffectBase
	{
		public var point:int=0;
		public var buffType:int=0;
		public var buffDuration:int=0;
		
		public function AddBuffEffect()
		{
			
		}
		
		public override function deal(target:PlayerBase,...args):void
		{
			var tempBuff:BuffBase=BuffFactory.getNewBuff(buffType);
			tempBuff.duration=buffDuration;
			target.buffList.push(tempBuff);
		}
	}
}