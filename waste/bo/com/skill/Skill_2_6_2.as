package com.skill
{
	import com.effect.*;
	
	public class Skill_2_6_2 extends ChildSkill
	{
		public function Skill_2_6_2()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="少女文乐2";
			typeList=[];
			cost=2;
			
			var tempEffect0=new CostEffect();
			tempEffect0.target=0;
			tempEffect0.isAttack=false;
			tempEffect0.isMagic=false;
			tempEffect0.isPhysics=false;
			tempEffect0.point=2;
			var tempEffect4=new HealEffect();
			tempEffect4.target=0;
			tempEffect4.isMagic=true;
			tempEffect4.point=4;
			effectList=[tempEffect0,tempEffect4];
		}
	}
}