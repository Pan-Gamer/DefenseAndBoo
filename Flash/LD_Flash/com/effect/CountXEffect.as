package com.effect
{
	import com.system.*;
	import com.gameObject.*;
	import com.util.*;
	
	//为什么要把cost和lostmp分开呢.我也不知道啊.
	public class CountXEffect extends EffectBase
	{
		public var resultIndex:int=ConstantUtil.DYNAMIC_POINT_X;
		public var countType:String="";//测算对象的类型,如hp、mp、buff数量.通常都是buff数量吧..
		public var countType2:String="";//如果需要,这里填具体类型.
		
		public function CountXEffect()
		{
			effectType="CountXEffect";
		}
		
		public override function deal(target:PlayerBase,action:ActionBase,...args):void
		{
			var result:int=0;
			switch(countType)
			{
				case "buff":
					result=target.getBuffCount(countType2);
					break;
			}
			switch(resultIndex)
			{
				case ConstantUtil.DYNAMIC_POINT_X:
					action.dynamicPointX=result;
					break;
				case ConstantUtil.DYNAMIC_POINT_Y:
					action.dynamicPointY=result;
					break;
			}
		}
	}
}