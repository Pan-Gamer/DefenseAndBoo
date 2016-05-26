package com.system
{
	import com.gameObject.*;
	
	public class BattleManager
	{
		public var player0:PlayerBase=null;
		public var player1:PlayerBase=null;
		public var currentAction0:ActionBase=null;
		public var currentAction1:ActionBase=null;
		
		public function BattleManager()
		{
			
		}
		
		public function addAction(i:int=0,action:ActionBase=null):void
		{
			switch(i)
			{
				case 0:
					currentAction0=action;
					break;
				case 1:
					currentAction1=action;
					break;
				default:
					break;
			}
		}
		
		public function deal():void
		{
			/*
			先就施法排序(转瞬,瞬间,普通)
			然后结算施法
			再就攻击排序(先攻,普通,缓攻),
			然后结算攻击
			*/
			var p0:int=getPriority(currentAction0);
			var p1:int=getPriority(currentAction1);
			if(p0>p1)
			{
				dealAction(currentAction0);
				if(stateTest())
				{
					return;
				}
				dealAction(currentAction1);
			}
			else if(p1>p0)
			{
				dealAction(currentAction1);
				if(stateTest())
				{
					return;
				}
				dealAction(currentAction0);
			}
			else
			{
				dealAction(currentAction0);
				dealAction(currentAction1);
			}
			if(stateTest())
			{
				return;
			}
			p0=getAttackPriority(currentAction0);
			p1=getAttackPriority(currentAction1);
			if(p0>p1)
			{
				dealActionAttack(currentAction0);
				if(stateTest())
				{
					return;
				}
				dealActionAttack(currentAction1);
			}
			else if(p1>p0)
			{
				dealActionAttack(currentAction1);
				if(stateTest())
				{
					return;
				}
				dealActionAttack(currentAction0);
			}
			else
			{
				dealActionAttack(currentAction0);
				dealActionAttack(currentAction1);
			}
			if(stateTest())
			{
				return;
			}
		}
		
		protected function dealAction(action:ActionBase):void
		{
			
		}
		
		protected function dealActionAttack(actoin:ActionBase):void
		{
			/*
			先判断是否被康,
			再判断是否被打康.
			造成伤害.
			*/
		}
		
		//状态检测.死亡等.
		protected function stateTest():Boolean
		{
			if(player0.hp<=0)
			{
				if(player1.hp<=0)
				{
					//同归于尽
					return true;
				}
				else
				{
					//player1获胜
					return true;
				}
			}
			else if(player1.hp<=0)
			{
				//player0获胜
				return true;
			}
			return false;
		}
		
		protected function getPriority(a:ActionBase):int
		{
			return 0;
		}
		
		protected function getAttackPriority(a:ActionBase):int
		{
			return 0;
		}
	}
}