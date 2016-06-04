package com.effect
{
	import com.system.*;
	import com.gameObject.*;
	import com.skill.*;
	
	public class AddBuffEffect extends EffectBase
	{
		public var point:int=1;
		public var buffType:String="";
		public var buffDuration:int=0;
		
		public function AddBuffEffect()
		{
			effectType="AddBuffEffect";
		}
		
		public override function deal(target:PlayerBase,action:ActionBase,...args):void
		{
			//要判断一下叠加方式.
			var tempBuff0=target.getBuffByType(buffType);
			var tempBuff:BuffBase=BuffFactory.getNewBuff(buffType);
			var tempPoint:int=point;
			if(null!=tempBuff0 && tempBuff0.stackAble)
			{
				if(tempBuff0.stackCount<tempBuff0.stackCountMax+tempPoint)
				{
					//可充分叠加
					tempBuff0.stackCount+=tempPoint;
					tempPoint=0;
				}
				else
				{
					tempPoint-tempBuff0.stackCountMax-tempBuff0.stackCount;
					tempBuff0.stackCount=tempBuff0.stackCountMax;
				}
				if(buffDuration>tempBuff0.duration)
				{
					tempBuff0.duration=buffDuration;
				}
			}
			if(tempPoint>0)
			{
				if(!tempBuff.compresenceAble)
				{
					if(null!=tempBuff0)
					{
						//不能存在多个;已有buff存在,不再生成新的
					}
					else
					{
						//反之,只生成一堆.不管能否放得下
						if(tempBuff.stackCountMax>tempPoint)
						{
							tempBuff.stackCount=tempPoint;
							tempPoint=0;
						}
						else
						{
							tempBuff.stackCount=tempBuff.stackCountMax;
							tempPoint-=tempBuff.stackCountMax;
						}
						tempBuff.duration=buffDuration;
						target.buffList.push(tempBuff);
					}
				}
				else
				{
					//可以共存,生成多堆直到都放下
					if(tempBuff.stackCountMax>tempPoint)
					{
						tempBuff.stackCount=tempPoint;
						tempPoint=0;
						tempBuff.duration=buffDuration;
						target.buffList.push(tempBuff);
					}
					else
					{
						while(tempPoint>0)
						{
							var tempBuff1=BuffFactory.getNewBuff(buffType);
							if(tempBuff.stackCountMax>tempPoint)
							{
								tempBuff1.staciCount=tempPoint;
								tempPoint=0;
							}
							else
							{
								tempBuff1.stackCount=tempBuff1.stackCountMax;
								tempPoint-=tempBuff1.stackCountMax;
							}
							tempBuff1.duration=buffDuration;
							target.buffList.push(tempBuff1);
						}
					}
				}
			}
		}
	}
}