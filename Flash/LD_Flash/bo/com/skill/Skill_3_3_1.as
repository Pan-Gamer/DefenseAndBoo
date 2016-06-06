package com.skill
{
	import com.effect.*;
	
	public class Skill_3_3_1 extends SkillBase
	{
		public function Skill_3_3_1()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="刀光一闪1";
			typeList=[];
			cost=2;
			
			var tempEffect0=new CostEffect();
			tempEffect0.target=0;
			tempEffect0.isAttack=false;
			tempEffect0.isMagic=false;
			tempEffect0.isPhysics=false;
			tempEffect0.point=2;
			var tempEffect=new DamageEffect();
			tempEffect.target=1;
			tempEffect.isAttack=true;
			tempEffect.isMagic=false;
			tempEffect.isPhysics=true;
			tempEffect.point=1;
			tempEffect.attackSpeed=2;
			var tempEffect2_1=new RemoveBuffEffect();
			tempEffect2_1.target=0;
			tempEffect2_1.buffType="刀光一闪";
			tempEffect2_1.point=-1;
			var tempEffect2_2=new GainManaEffect();
			tempEffect2_2.target=0;
			tempEffect2_2.isMagic=true;
			tempEffect2_2.point=1;
			var tempEffect2=new ConditionEffect();
			tempEffect2.target=0;
			tempEffect2.isAttack=false;//视情况而定,通常和触发的effect保持一致即可.
			tempEffect2.isMagic=false;
			tempEffect2.isPhysics=false;
			tempEffect2.conditionType="buff";
			tempEffect2.conditionType2="刀光一闪";
			tempEffect2.conditionCount=1;
			tempEffect2.successEffectList=[tempEffect2_1,tempEffect2_2];
			var tempEffect3=new RemoveBuffEffect();
			tempEffect3.target=0;
			tempEffect3.isPhysics=true;
			tempEffect3.buffType="收刀入鞘";
			tempEffect3.point=-1;
			var tempEffect4=new SingleEffect();
			tempEffect4.type="前摇";
			var tempEffect5=new AddBuffEffect();
			tempEffect5.target=0;
			tempEffect5.isPhysics=true;
			tempEffect5.buffType="闪";
			tempEffect5.buffDuration=1;
			effectList=[tempEffect0,tempEffect,tempEffect2,tempEffect4,tempEffect5];
		}
	}
}