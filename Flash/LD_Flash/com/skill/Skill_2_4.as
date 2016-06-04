﻿package com.skill
{
	import com.effect.*;
	
	public class Skill_2_4 extends SkillBase
	{
		public function Skill_2_4()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="绞首的蓬莱人偶";
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
			tempEffect.isMagic=true;
			tempEffect.isPhysics=false;
			tempEffect.point=2;
			tempEffect.attackSpeed=1;
			var tempEffect3=new SingleEffect();
			tempEffect3.type="前摇";
			var tempEffect4=new AddBuffEffect();
			tempEffect4.target=0;
			tempEffect4.isAttack=false;
			tempEffect4.isMagic=false;
			tempEffect4.isPhysics=false;
			tempEffect4.buffType="待机人偶";
			tempEffect4.buffDuration=-1;
			var tempEffect5=new GhostEffect();
			tempEffect5.target=1;
			tempEffect5.hpPoint=1;
			tempEffect5.mpPoint=0;
			tempEffect5.isAttack=true;
			tempEffect5.isMagic=true;
			tempEffect5.isPhysics=false;
			effectList=[tempEffect0,tempEffect,tempEffect3,tempEffect4,tempEffect5];
		}
	}
}