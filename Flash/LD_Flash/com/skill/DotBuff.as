package com.skill
{
	/*
	* 假如要把skill/buff弄成复用的,可以完善这东西来用.
	* 目前机制应该是直接写死其子类.
	*/
	public class DotBuff extends TurnEndTickBuff
	{		
		public function DotBuff()
		{
			init();
		}
		
		public function init():void
		{
			buffType="DotBuff";
			/*var tempEffect=new DamageEffect();
			tempEffect.isAttack=false;
			tempEffect.isMagic=true;
			tempEffect.isPhysics=false;
			tempEffect.point=1;
			tempEffect.attackSpeed=20;//回合结束,一组全新的速度~或许没必要分开啊.
			tempEffect.*/
		}
	}
}