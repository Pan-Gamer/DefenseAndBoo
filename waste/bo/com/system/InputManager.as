package com.system
{
	import flash.events.*;
	import flash.utils.Timer;
	import flash.display.DisplayObject;
	import flash.display.Stage;
	
	public class InputManager
	{
		public var keyList:Array=[false,false,false,false,false,false,false,false]//left,right,up,down,a,b,d,c;
		public var currentInputList:Array=[null,null,null,null,null,null,null,null];
		public var inputTimeCount:int=0;//0~160
		public var slotNumLimit:int=8;
		public var slotGap=20;
		private var timerPause:Boolean=true;
		public const admissibleError:Number=15;
		
		public var cb_inputFinish:Function=null;
		
		public function startInput():void
		{
			timerPause=false;
		}
		
		public function clearInput():void
		{
			currentInputList=[null,null,null,null,null,null,null,null];
			inputTimeCount=slotGap*-2;
		}
		
		public function InputManager()
		{
			init();
		}
		
		public function init():void
		{
			
		}
		
		protected function initKeyboard():void
		{
			
		}
		
		public function initListener(s:Stage):void
		{
			var timer:Timer=new Timer(10);
			timer.addEventListener(TimerEvent.TIMER,handlerTimer,false,0,true);
			timer.start();
			s.addEventListener(KeyboardEvent.KEY_DOWN,handlerKeyDown,false,0,true);
			//stage.addEventListener(KeyboardEvent.keyUp,handlerKeyUp,false,0,true);
		}
		
		private function handlerKeyDown(e:KeyboardEvent):void
		{
			var tempKeyCode:String=null;
			switch(e.keyCode)
			{
				case 87://w
					tempKeyCode="8";
					break;
				case 83://s
					tempKeyCode="2";
					break;
				case 65://a
					tempKeyCode="4";
					break;
				case 68://d
					tempKeyCode="6";
					break;
				case 71://g
					tempKeyCode="a";
					break;
				case 72://h
					tempKeyCode="b";
					break;
				case 74://j
					tempKeyCode="c";
					break;
				case 89://y
					tempKeyCode="d";
					break;
			}
			var slotIndex:int=getInputSlot();
			if(slotIndex>=0 && slotIndex<slotNumLimit)
			{
				currentInputList[slotIndex]=tempKeyCode;
			}
		}
		
		/*private function handlerKeyUp(e:KeyboardEvent):void
		{
			
		}*/
		
		private function handlerTimer(e:TimerEvent):void
		{
			if(!timerPause)
			{
				inputTimeCount++;
				if(inputTimeCount>slotNumLimit*slotGap)
				{
					timerPause=true;
					if(null!=cb_inputFinish)
					{
						cb_inputFinish(currentInputList);
					}
				}
			}
		}
		
		protected function getInputSlot():int
		{
			var currentTimeStamp=inputTimeCount;
			//获得容许延迟内的所有slot,按距离升序排队
			var slots:Array=getNeighboringSlots(currentTimeStamp,admissibleError);
			//从前向后找一个空slot.
			for(var i=0;i<slots.length;i++)
			{
				if(null==currentInputList[slots[i]])
				{
					return slots[i];
				}
			}
			return -1;
		}
		
		protected function getNeighboringSlots(currentTime,errorLimit):Array
		{
			var result:Array=[];
			//var percision=100;
			//var currentIndex=(int(currentTime/slotGap*percision))/percision;//其实精度10就够了吧应该
			var currentErrorLimit=errorLimit/slotGap;
			var currentIndex=currentTime/slotGap;
			var leftResult:Array=[];
			var leftPoint=Math.floor(currentIndex);
			var rightResult:Array=[];
			var rightPoint=Math.ceil(currentIndex);
			var leftFirst:Boolean=true;
			if(currentIndex%1<=0.5)
			{
				leftFirst=true;
			}
			else
			{
				leftFirst=false;
			}
			while(currentIndex-leftPoint<=currentErrorLimit)
			{
				leftResult.push(leftPoint);
				leftPoint-=slotGap;
			}
			while(rightPoint-currentIndex<=currentErrorLimit)
			{
				rightResult.push(rightPoint);
				rightPoint+=slotGap;
			}
			var lLength=leftResult.length;
			var rLength=rightResult.length;
			if(leftFirst)
			{
				for(var i=0;i<lLength||i<rLength;i++)
				{
					if(i<lLength)
					{
						result.push(leftResult[i]);
					}
					if(i<rLength)
					{
						result.push(rightResult[i]);
					}
				}
			}
			else
			{
				
				for(i=0;i<lLength||i<rLength;i++)
				{
					if(i<rLength)
					{
						result.push(rightResult[i]);
					}
					if(i<lLength)
					{
						result.push(leftResult[i]);
					}
				}
			}
			return result;
		}
	}
}