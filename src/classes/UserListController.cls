public  class UserListController {
	
	public List<User> getUserList(){
	
	List<User> userList=[select name from User];	
	return userList;
	}
    
}