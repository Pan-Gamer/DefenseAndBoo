package com.effect
{
	import com.gameObject.*;
	import com.system.*;
	/*
	* 基础攻击
	*/
	public class DamageEffect extends EffectBase
	{
		public var point:int=0;
		
		public function DamageEffect()
		{
			effectType="DamageEffect";
		}
		
		public override function deal(target:PlayerBase,action:ActionBase,...args):void
		{
			var attackSuccess:Boolean=true;
			if(isMagic)
			{
				if(target.containBuff("魔免") || (target.containBuff("防")&&(!action.containEffect("破防"))))
				{
					attackSuccess=false;
				}
			}
			if(isPhysics)
			{
				if(target.containBuff("闪")&&(!action.containEffect("必中")) || (target.containBuff("防")&&(!action.containEffect("破防"))))
				{
					//被闪避
					attackSuccess=false;
				}
			}
			if(attackSuccess)
			{
				target.hp-=point;
				target.hasAttacked=true;
			}
		}
	}
}