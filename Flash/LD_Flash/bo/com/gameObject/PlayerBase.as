package com.gameObject
{
	import com.skill.*;
	import com.system.BuffFactory;//生成测试角色可能会用到
	
	public class PlayerBase extends GameObjectBase
	{
		public var hpDefault:int=0;
		public var hpMax:int=0;
		public var mpDefault:int=0;
		public var mpMax:int=0;
		public var skillList:Array=[];
		
		public var name:String="";
		public var hp:int=0;
		public var mp:int=0;
		public var buffList:Array=[];
		
		public var hasAttacked:Boolean=false;
		
		public var cb_dealBuff:Function=null;
		
		public function PlayerBase()
		{
			
		}
		
		public function initTest(classIndex:int=0):void
		{
			hpDefault=10;
			hpMax=20;
			mpDefault=0;
			mpMax=10;
			switch(classIndex)
			{
				case 0:
					skillList=[new Skill0(),new Skill1(),new Skill2(),new Skill3(),new Skill4(),new Skill5(),new Skill6(),new Skill7(),new Skill8(),new Skill9(),new Skill10(),new Skill11(),new Skill12()];
					break;
				case 2:
					skillList=[new Skill_2_0(),new Skill_2_1(),new Skill2(),new Skill3(),new Skill4(),new Skill_2_2(),new Skill_2_3(),new Skill_2_4(),new Skill_2_5(),new Skill_2_6(),new Skill_2_7(),new Skill_2_8(),new Skill_2_9(),new Skill_2_10(),new Skill_3_1(),new Skill_3_2(),new Skill_3_3()];
					buffList.push(BuffFactory.getNewBuff("居合剑"));
					break;
			}
			
			init();
		}
		
		public function init():void
		{
			hp=hpDefault;
			mp=mpDefault;
			mp=10;
		}
		
		public function containBuff(type:String):Boolean
		{
			for each(var tempBuff:BuffBase in buffList)
			{
				if(tempBuff.type==type)
				{
					return true;
				}
			}
			return false;
		}
		
		/*
		* 这个本意是用于那种不可叠加的buff.
		* 然而和消耗x层共同作用的时候,比较尴尬.
		* 目前会把同名buff的层数加总返回啦.
		* 不过同名buff、一次消耗多层的情况下,后续程序实现太蠢了.
		*/
		public function getBuffCount(type:String):int
		{
			var count:int=0;
			for each(var tempBuff:BuffBase in buffList)
			{
				if(tempBuff.type==type)
				{
					count+=tempBuff.stackCount;
				}
			}
			return count;
		}
		
		public function getBuffByType(type:String):BuffBase
		{
			for(var i=buffList.length-1;i>=0;i--)
			{
				if(buffList[i].type==type)
				{
					return buffList[i];
				}
			}
			return null;
		}
		
		public function removeBuffByType(type:String):void
		{
			for(var i=buffList.length-1;i>=0;i--)
			{
				if(buffList[i].type==type)
				{
					buffList.splice(i,1);
				}
			}
		}
		
		public function buffFade():void
		{
			for(var i=buffList.length-1;i>=0;i--)
			{
				var tempBuff=buffList[i];
				if(tempBuff.fade())
				{
					buffList.splice(i,1);
				}
			}
		}
		
		/*
		* 回合开始,cd走一回合,等等
		*/
		public function turnStart():void
		{
			for each(var tempSkill:SkillBase in skillList)
			{
				if(tempSkill.coolDownMax>0 && tempSkill.coolDown>0)
				{
					tempSkill.setCoolDown("fade",-1);
				}
			}
		}
		
		/*
		* 回合开始的各种触发和tick
		*/
		public function startTick():void
		{
			
		}
		
		/*
		* 回合结束的各种触发和tick
		*/
		public function endTick():void
		{
			for(var i=0;i<buffList.length;i++)
			{
				var tempBuff=buffList[i];
				if(tempBuff is TurnEndTickBuff)
				{
					if(null!=cb_dealBuff)
					{
						cb_dealBuff(tempBuff,this);
					}
				}
			}
		}
	}
}