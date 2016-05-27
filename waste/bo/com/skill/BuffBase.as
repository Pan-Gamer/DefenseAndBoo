package com.skill
{
	public class BuffBase
	{
		protected var buffType:String="BuffBase";
		public var duration:int=0;
		public var name:String="";
		
		public function get type():String
		{
			return buffType;
		}
		
		public function fade():Boolean
		{
			if(duration!=-1)
			{
				if(duration==0)
				{
					//error
					return false;
				}
				duration--;
				if(duration==0)
				{
					return true;
				}
			}
			return false;
		}
	}
}