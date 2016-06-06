package com.skill
{
	import com.effect.*;
	
	public class Skill5 extends SkillBase
	{
		public function Skill5()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="恶魂凭依";
			typeList=[];
			cost=3;
			
			var tempEffect0=new CostEffect();
			tempEffect0.target=0;
			tempEffect0.isAttack=false;
			tempEffect0.isMagic=false;
			tempEffect0.isPhysics=false;
			tempEffect0.point=3;
			var tempEffect=new DamageEffect();
			tempEffect.target=1;
			tempEffect.isAttack=true;
			tempEffect.isMagic=true;
			tempEffect.isPhysics=false;
			tempEffect.point=1;
			tempEffect.attackSpeed=2;
			var tempEffect3=new SingleEffect();
			tempEffect3.type="前摇";
			var tempEffect4=new GhostEffect();
			tempEffect4.target=1;
			tempEffect4.hpPoint=2;
			tempEffect4.mpPoint=0;
			tempEffect4.isAttack=true;
			tempEffect4.isMagic=true;
			tempEffect4.isPhysics=false;
			effectList=[tempEffect0,tempEffect,tempEffect3,tempEffect4];
		}
	}
}