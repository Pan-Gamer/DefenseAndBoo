package com.skill
{
	import com.effect.*;
	
	/*
	* 缓攻,物理攻击,2费打2,+1待机人偶.
	* 如果命中,额外+1待机人偶.
	*/
	public class Skill_2_5 extends SkillBase
	{
		public function Skill_2_5()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="魔彩光的上海人偶";
			typeList=[];
			cost=2;
			
			var tempEffect0=new CostEffect();
			tempEffect0.target=0;
			tempEffect0.isAttack=false;
			tempEffect0.isMagic=false;
			tempEffect0.isPhysics=false;
			tempEffect0.point=2;
			var tempEffect=new AdvanceDamageEffect();
			tempEffect.target=1;
			tempEffect.isAttack=true;
			tempEffect.isMagic=false;
			tempEffect.isPhysics=true;
			tempEffect.point=2;
			tempEffect.attackSpeed=1;
			var tempEffect2=new AddBuffEffect();
			tempEffect2.target=0;
			tempEffect2.isAttack=false;
			tempEffect2.isMagic=false;
			tempEffect2.isPhysics=false;
			tempEffect2.buffType="待机人偶";
			tempEffect2.buffDuration=-1;
			var tempEffect3_1=new AddBuffEffect();
			tempEffect3_1.target=0;
			tempEffect3_1.isAttack=false;
			tempEffect3_1.isMagic=false;
			tempEffect3_1.isPhysics=false;
			tempEffect3_1.buffType="待机人偶";
			tempEffect3_1.buffDuration=-1;
			var tempEffect3=new ConditionEffect();
			tempEffect3.target=0;
			tempEffect3.isAttack=true;//视情况而定,通常和触发的effect保持一致即可.
			tempEffect3.isMagic=false;
			tempEffect3.isPhysics=false;
			tempEffect3.conditionType="actionAttackSuccess";
			tempEffect3.successEffectList=[tempEffect3_1];
			var tempEffect4=new SingleEffect();
			tempEffect4.type="前摇";
			effectList=[tempEffect0,tempEffect,tempEffect2,tempEffect3,tempEffect4];
		}
	}
}