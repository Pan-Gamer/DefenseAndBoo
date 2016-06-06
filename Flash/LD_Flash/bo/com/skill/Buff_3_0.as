package com.skill
{
	import com.effect.*;
	
	public class Buff_3_0 extends TurnEndTickBuff
	{
		public function Buff_3_0()
		{
			init();
		}
		
		public override function init():void
		{
			buffType="Buff_3_0";
			name="居合剑";
			duration=-1;
			stackAble=true;//上限1层,可以叠加(可以刷新时间)
			compresenceAble=false;
			
			var tempEffect0=new AddBuffEffect();
			tempEffect0.isPhysics=true;
			tempEffect0.target=0;
			tempEffect0.buffType="收刀入鞘";
			tempEffect0.buffDuration=-1;
			var tempEffect1=new RemoveBuffEffect();
			tempEffect1.isPhysics=true;
			tempEffect1.target=0;
			tempEffect1.buffType="收刀入鞘";
			tempEffect1.point=-1;
			var tempEffect=new ConditionEffect();
			tempEffect.target=0;
			tempEffect.isAttack=false;
			tempEffect.isMagic=false;
			tempEffect.isPhysics=true;
			tempEffect.conditionType="hasAttackAction";
			tempEffect.successEffectList=[tempEffect1];
			tempEffect.failEffectList=[tempEffect0];
			tickEffectList=[tempEffect];
		}
	}
}