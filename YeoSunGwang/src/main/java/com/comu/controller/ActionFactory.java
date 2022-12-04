package com.comu.controller;

import com.comu.controller.action.Action;
import com.comu.controller.action.BoardDeleteAction;
import com.comu.controller.action.BoardListAction;
import com.comu.controller.action.BoardUpdateAction;
import com.comu.controller.action.BoardUpdateFormAction;
import com.comu.controller.action.BoardViewAction;
import com.comu.controller.action.BoardWriteAction;
import com.comu.controller.action.BoardWriteFormAction;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
		super();
	} 
	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		
		Action action = null;
		System.out.println("ActionFactory :" + command);
		/* 추가된 부분 */
		if (command.equals("board_list")) {
			action = new BoardListAction();
		} else if (command.equals("board_write_form")) {
			action = new BoardWriteFormAction();
		} else if (command.equals("board_write")) {
			action = new BoardWriteAction();
		} else if (command.equals("board_view")) {
			action = new BoardViewAction();
		} else if (command.equals("board_update_form")) {
			action = new BoardUpdateFormAction();
		} else if (command.equals("board_update")) {
			action = new BoardUpdateAction();
		} else if (command.equals("board_delete")) {
			action = new BoardDeleteAction();
		}
		return action;
	}
	
	
	
	
	
	
	
	
	
}
