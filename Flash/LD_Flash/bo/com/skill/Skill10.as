package com.skill
{
	import com.effect.*;
	
	public class Skill10 extends SkillBase
	{
		public function Skill10()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="无为无策的冥罚(sc)";
			typeList=[];
			cost=6;
			
			var tempEffect0=new CostEffect();
			tempEffect0.target=0;
			tempEffect0.isAttack=false;
			tempEffect0.isMagic=false;
			tempEffect0.isPhysics=false;
			tempEffect0.point=6;
			var tempEffect=new DamageEffect();
			tempEffect.target=1;
			tempEffect.isAttack=true;
			tempEffect.isMagic=true;
			tempEffect.isPhysics=false;
			tempEffect.point=2;
			tempEffect.attackSpeed=2;
			var tempEffect2=new DamageEffect();
			tempEffect2.target=1;
			tempEffect2.isAttack=true;
			tempEffect2.isMagic=true;
			tempEffect2.isPhysics=false;
			tempEffect2.point=2;
			tempEffect2.attackSpeed=1;
			var tempEffect3=new DamageEffect();
			tempEffect3.target=1;
			tempEffect3.isAttack=true;
			tempEffect3.isMagic=true;
			tempEffect3.isPhysics=false;
			tempEffect3.point=2;
			tempEffect3.attackSpeed=0;
			var tempEffect4=new SingleEffect();
			tempEffect4.type="前摇";
			effectList=[tempEffect0,tempEffect,tempEffect2,tempEffect3,tempEffect4];
		}
	}
}