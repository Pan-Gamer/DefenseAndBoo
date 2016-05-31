package com.gameObject
{
	import com.skill.*;
	
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
		
		public function PlayerBase()
		{
			
		}
		
		public function initTest():void
		{
			hpDefault=10;
			hpMax=20;
			mpDefault=0;
			mpMax=10;
			skillList=[new Skill0(),new Skill1(),new Skill2(),new Skill3(),new Skill4(),new Skill5(),new Skill6(),new Skill7(),new Skill8()];
			
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
	}
}