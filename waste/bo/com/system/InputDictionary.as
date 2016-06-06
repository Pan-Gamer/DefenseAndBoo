package com.system
{
	/*
	* 根据输入序列,转换出对应的skill
	*/
	public class InputDictionary
	{
		public var dictionary0:Array=[];
		public var dictionary1:Array=[];
		
		public function InputDictionary()
		{
			
		}
		
		public function initTestKeyList():Array
		{
			var result:Array=[];
			result.push(["626a","技能0"]);
			result.push(["26a","技能1"]);
			result.push(["624a","技能2"]);
			result.push(["a","技能3"]);
			result.push(["8","技能4"]);
			result.push(["aaaaaaa","技能5"]);
			result.push(["624624a","技能6"]);
			result.push(["226a","技能7"]);
			return result;
		}
		
		public function initDictionary(index:int,skillList:Array):void
		{
			var result:Array=[];
			var temp:Array=[null,null,null,null,null,null,null];
			for each(var a:Array in skillList)
			{
				var l=a[0].length;
				if(null==temp[l])
				{
					temp[l]=[];
				}
				temp[l].push(a);
			}
			for(var i=temp.length-1;i>=0;i--)
			{
				if(null!=temp[i])
				{
					result=result.concat(temp[i]);
				}
			}
			switch(index)
			{
				case 0:
					dictionary0=result;
					break;
				case 1:
					dictionary1=result;
					break;
			}
		}
		
		public function getSkill(index:int,keyList:String):String
		{
			var dictionary=index==0?dictionary0:dictionary1;
			for(var i=0;i<dictionary.length;i++)
			{
				if(keyList.indexOf(dictionary[i][0])!=-1)
				{
					return dictionary[i][1];
				}
			}
			return null;
		}
		
		//player1的所有4和6互换~有必要么?
		private function reversePlayer1():void
		{
			//todo
		}
	}
}