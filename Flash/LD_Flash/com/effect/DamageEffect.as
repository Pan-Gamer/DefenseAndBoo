package com.effect
{
	import com.gameObject.*;
	import com.system.*;
	import com.skill.*;
	import com.util.*;
	/*
	* 基础攻击
	*/
	public class DamageEffect extends EffectBase
	{
		public var point:int=0;
		
		public function DamageEffect()
		{
			effectType="DamageEffect";
		}
		
		public override function deal(target:PlayerBase,action:ActionBase,...args):void
		{
			var attackSuccess:Boolean=true;
			var tempPoint:int=point;
			if(point==ConstantUtil.DYNAMIC_POINT_X)
			{
				tempPoint=action.dynamicPointX;
			}
			else if(point==ConstantUtil.DYNAMIC_POINT_Y)
			{
				tempPoint=action.dynamicPointY;
			}
			if(isMagic)
			{
				if(target.containBuff("魔免") || (target.containBuff("防")&&(null==action || !action.containEffect("破防"))))
				{
					attackSuccess=false;
				}
			}
			if(isPhysics)
			{
				if(target.containBuff("闪")&&(!action.containEffect("必中")) || (target.containBuff("防")&&(null==action || !action.containEffect("破防"))))
				{
					//被闪避
					attackSuccess=false;
				}
			}
			if(attackSuccess)
			{
				if(target.containBuff("防止伤害"))
				{
					var tempBuff:BuffBase=target.getBuffByType("防止伤害");
					if(tempBuff.stackCount>0)
					{
						tempBuff.stackCount--;
						if(tempBuff.stackCount==0)
						{
							target.removeBuffByType("防止伤害");
						}
						attackSuccess=false;
					}
				}
			}
			if(attackSuccess)
			{
				target.hp-=tempPoint;
				target.hasAttacked=true;
				if(null!=action && tempPoint>0 && action.containEffect("系命"))
				{
					action.hostPlayer.hp+=tempPoint;
				}
			}
			if(attackSuccess)
			{
				if(null!=action)
				{
					action.attackSuccess=true;
				}
			}
		}
	}
}