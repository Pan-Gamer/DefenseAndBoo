package com.skill
{
	import com.effect.*;
	
	public class Skill_2_6_1 extends ChildSkill
	{
		public function Skill_2_6_1()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="少女文乐1";
			typeList=[];
			cost=2;
			
			var tempEffect0=new CostEffect();
			tempEffect0.target=0;
			tempEffect0.isAttack=false;
			tempEffect0.isMagic=false;
			tempEffect0.isPhysics=false;
			tempEffect0.point=2;
			var tempEffect3=new AddBuffEffect();
			tempEffect3.target=0;
			tempEffect3.isAttack=false;
			tempEffect3.isMagic=false;
			tempEffect3.isPhysics=false;
			tempEffect3.buffType="待机人偶";
			tempEffect3.buffDuration=-1;
			tempEffect3.point=1;
			var tempEffect4=new HealEffect();
			tempEffect4.target=0;
			tempEffect4.isMagic=true;
			tempEffect4.point=2;
			effectList=[tempEffect0,tempEffect3,tempEffect4];
		}
	}
}