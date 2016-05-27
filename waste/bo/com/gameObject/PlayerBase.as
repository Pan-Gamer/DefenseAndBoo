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
		
		public function PlayerBase()
		{
			
		}
		
		public function initTest():void
		{
			hpDefault=10;
			hpMax=20;
			mpDefault=0;
			mpMax=10;
			skillList=[new Skill0(),new Skill1(),new Skill2(),new Skill3(),new Skill4];
			
			init();
		}
		
		public function init():void
		{
			hp=hpDefault;
			mp=mpDefault;
		}
		
		public function containBuff(type:String):Boolean
		{
			for each(var tempBuff:BuffBase in buffList)
			{
				trace(tempBuff.type);
				if(tempBuff.type==type)
				{
					return true;
				}
			}
			return false;
		}
	}
}