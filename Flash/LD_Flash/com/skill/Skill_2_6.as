package com.skill
{
	import com.gameObject.*;
	/*
	* 少女文乐
	* 4回合cd.
	* 0~2费 +2人偶.
	* 1/2/3~2费 +1人偶,+2hp.
	* >=4~2费 +4hp.
	*/
	public class Skill_2_6 extends MultipleSkill
	{
		public override function get cost():int
		{
			//error
			return -1;
		}
		
		public function Skill_2_6()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="少女文乐";
			typeList=[];
			cost=-1;
			coolDown=0;
			coolDownMax=4;
			var childSkill0=new Skill_2_6_0();
			childSkill0.parentSkill=this;
			var childSkill1=new Skill_2_6_1();
			childSkill1.parentSkill=this;
			var childSkill2=new Skill_2_6_2();
			childSkill2.parentSkill=this;
			childSkillList=[childSkill0,childSkill1,childSkill2];
		}
		
		public override function getChildSkill(host:PlayerBase):SkillBase
		{
			var result:SkillBase=null;
			switch(host.getBuffCount("待机人偶"))
			{
				case 0:
					result=childSkillList[0];
					break;
				case 1:
				case 2:
				case 3:
					result=childSkillList[1];
					break;
				default:
					result=childSkillList[2];
					break;
			}
			//currentChild=result;
			return result;
		}
	}
}