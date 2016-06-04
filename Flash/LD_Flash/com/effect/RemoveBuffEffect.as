package com.effect
{
	import com.system.*;
	import com.gameObject.*;
	import com.skill.*;
	
	public class RemoveBuffEffect extends EffectBase
	{
		public var point:int=0;//掉x层
		public var buffType:String="";
		public var buffDuration:int=0;//掉x回合.应该不会用到吧..
		
		public function RemoveBuffEffect()
		{
			effectType="RemoveBuffEffect";
		}
		
		public override function deal(target:PlayerBase,action:ActionBase,...args):void
		{
			//todo 不可叠加的buff,假如一次消耗超过一个....
			var tempBuff:BuffBase=target.getBuffByType(buffType);
			if(point==-1 || tempBuff.stackCount<=point)
			{
				target.removeBuffByType(buffType);
			}
			else
			{
				tempBuff.stackCount-=point;
			}
		}
	}
}