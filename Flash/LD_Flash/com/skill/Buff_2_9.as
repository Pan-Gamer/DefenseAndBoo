package com.skill
{
	import com.effect.*;
	/*
	* _2_9[曲折的诅咒]所附带的dot
	*/
	public class Buff_2_9 extends TurnEndTickBuff
	{		
		public function Buff_2_9()
		{
			init();
		}
		
		public override function init():void
		{
			buffType="Buff_2_9";
			name="曲折的诅咒";
			var tempEffect=new DamageEffect();
			tempEffect.isAttack=false;
			tempEffect.isMagic=true;
			tempEffect.isPhysics=false;
			tempEffect.point=1;
			tempEffect.attackSpeed=20;//回合结束,一组全新的速度~或许没必要分开啊.
			tickEffectList=[tempEffect];
		}
	}
}