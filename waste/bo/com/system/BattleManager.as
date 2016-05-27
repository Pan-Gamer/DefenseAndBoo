package com.system
{
	import com.gameObject.*;
	import com.skill.*;
	
	public class BattleManager
	{
		public var player0:PlayerBase=null;
		public var player1:PlayerBase=null;
		public var currentAction0:ActionBase=null;
		public var currentAction1:ActionBase=null;
		
		public var cb_refreshUI:Function=null;
		public var cb_log:Function=null;
		private var turnCount:int=1;
		
		public function BattleManager()
		{
			
		}
		
		public function addSkillToAction(i:int=0,skill:SkillBase=null):void
		{
			var action=new ActionBase();
			action.currentSkill=skill;
			action.host=i;
			if(costTest(i,skill))
			{
				addAction(i,action);
			}
			else
			{
				//我们需要更多法力值
			}
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
			if(null!=currentAction0 && null!=currentAction1)
			{
				traceLog(0,"使用了"+currentAction0.currentSkill.name);
				traceLog(1,"使用了"+currentAction1.currentSkill.name);
				deal();
				endPhrase();
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
			var tempSkill:SkillBase=action.currentSkill;
			var actoinHost:PlayerBase=action.host==0?player0:player1;
			for(var i=0;i<tempSkill.effectList.length;i++)
			{
				var tempEffect=tempSkill.effectList[i];
				if(tempEffect.isAttack)
				{
					continue;
				}
				var tempTarget:PlayerBase=(action.host^tempEffect.target)==0?player0:player1;//按位xor
				tempEffect.deal(tempTarget);
				refreshUI();
			}
		}
		
		protected function dealActionAttack(action:ActionBase):void
		{
			/*todo
			先判断是否被康,
			再判断是否被打康.
			造成伤害.
			*/
			var tempSkill:SkillBase=action.currentSkill;
			var actionHost:PlayerBase=action.host==0?player0:player1;
			for(var i=0;i<tempSkill.effectList.length;i++)
			{
				var tempEffect=tempSkill.effectList[i];
				if(!tempEffect.isAttack)
				{
					continue;
				}
				var tempTarget:PlayerBase=(action.host^tempEffect.target)==0?player0:player1;//按位xor
				tempEffect.deal(tempTarget);
				refreshUI();
			}
		}
		
		//状态检测.死亡等.
		protected function stateTest():Boolean
		{
			if(player0.hp<=0)
			{
				if(player1.hp<=0)
				{
					traceLog(-1,"同归于尽");
					return true;
				}
				else
				{
					traceLog(0,"失败");
					traceLog(1,"胜利");
					return true;
				}
			}
			else if(player1.hp<=0)
			{
				traceLog(0,"胜利");
				traceLog(1,"失败");
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
		
		public function startPhrase():void
		{
			//todo cd走一回合
			refreshUI();
		}
		
		public function endPhrase():void
		{
			currentAction0=null;
			currentAction1=null;
			traceLog(-1,"  第"+turnCount+"回合结束");
			turnCount++;
			player0.buffFade();
			player1.buffFade();
			refreshUI();
		}
		
		protected function refreshUI():void
		{
			if(null!=cb_refreshUI)
			{
				cb_refreshUI();
			}
		}
		
		protected function traceLog(i:int=-1,s:String=""):void
		{
			if(null!=cb_log)
			{
				if(i!=-1)
				{
					cb_log(i,s);
				}
				else
				{
					cb_log(0,s);
					cb_log(1,s);
				}
			}
		}
		
		public function costTest(i:int,s:SkillBase):Boolean
		{
			var tempPlayer:PlayerBase=i==0?player0:player1;
			if(tempPlayer.mp>=s.cost)
			{
				return true;
			}
			return false;
		}
	}
}