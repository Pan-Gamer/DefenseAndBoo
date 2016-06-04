package com.skill
{
	import com.effect.*;
	
	/*
	* 弹幕,3,1,0速各打2.
	* 灵体3(防失去3hp).这部分有进一步buff的空间.
	* 对策是用3或无前摇的2速攻击互康.
	*/
	public class Skill11 extends SkillBase
	{
		public function Skill11()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="现世妄执的冥罚(sc)";
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
			tempEffect.attackSpeed=3;
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
			var tempEffect5=new GhostEffect();
			tempEffect5.target=1;
			tempEffect5.hpPoint=3;
			tempEffect5.mpPoint=0;
			tempEffect5.isAttack=true;
			tempEffect5.isMagic=true;
			tempEffect5.isPhysics=false;
			effectList=[tempEffect0,tempEffect,tempEffect2,tempEffect3,tempEffect4,tempEffect5];
		}
	}
}