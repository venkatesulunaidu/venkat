package com.niit.backend.controllers;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.backend.dao.FriendDao;
import com.niit.backend.model.Friend;
import com.niit.backend.model.User;
import com.niit.backend.model.Error;

@Controller
public class FriendController {
	@Autowired
private FriendDao friendDao;

	public FriendDao getFriendDao() {
		return friendDao;
	}

	public void setFriendDao(FriendDao friendDao) {
		this.friendDao = friendDao;
	}
@RequestMapping(value="/getAllFriends",method=RequestMethod.GET)
	public ResponseEntity<?> getAllFriends(HttpSession session){
		User user=(User)session.getAttribute("user");
		if(user!=null){
		List<Friend> friends=friendDao.getAllFriends(user.getUsername());
		return new ResponseEntity<List<Friend>>(friends,HttpStatus.OK);
		}
		else
			return new ResponseEntity<Error>(new Error(1,"Unauthorized user"),HttpStatus.UNAUTHORIZED);
	}
@RequestMapping(value="/friendRequest",method=RequestMethod.POST)
public ResponseEntity<?> sendFriendRequest(@RequestBody String username,HttpSession session){
	User user=(User) session.getAttribute("user");
	if(user==null)
		return new ResponseEntity<Error>(new Error(1,"Unauthorized user"),HttpStatus.UNAUTHORIZED);
	else{
		friendDao.sendFriendRequest(user.getUsername(),username);
		return new ResponseEntity<Void>(HttpStatus.OK);
	}
}
@RequestMapping(value="/pendingRequest",method=RequestMethod.GET)
public ResponseEntity<?> getAllPendingRequest(HttpSession session){
	User user=(User)session.getAttribute("user");
	if(user==null)
		return new ResponseEntity<Error>(new Error(1,"Unauthorized user"),HttpStatus.UNAUTHORIZED);
	else{
		List<Friend> pendingRequest=friendDao.getPendingRequest(user.getUsername());
		return new ResponseEntity<List<Friend>>(pendingRequest,HttpStatus.OK);
	}
}
@RequestMapping(value="/updateFriendRequest/{friendStatus}/{fromId}",method=RequestMethod.PUT)
public ResponseEntity<?> updatePendingRequest(@PathVariable(value="friendStatus") char friendStatus,
		@PathVariable(value="fromId") String fromId,HttpSession session){
	User user=(User)session.getAttribute("user");
	if(user==null)
		return new ResponseEntity<Error>(new Error(1,"Unauthorized user"),HttpStatus.UNAUTHORIZED);
	else{
		friendDao.updatePendingRequest(friendStatus,fromId,user.getUsername());
		return new ResponseEntity<Void>(HttpStatus.OK);
	}
}
}
