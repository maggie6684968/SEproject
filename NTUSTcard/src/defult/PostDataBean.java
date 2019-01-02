package defult;

import java.util.ArrayList;
import java.util.Date;
import java.text.SimpleDateFormat;

public class PostDataBean {
	public int id;
	public String author;
	public String board;
	public int priority;
	public String content;
	public String postTime;
	public int heart;
	public int comments;
	public ArrayList<String> comment;

	public PostDataBean() {
		id = 0;
		author = "";
		board = "";
		priority = 0;
		content = "";
		SimpleDateFormat sdFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Date date = new Date();
		String strDate = sdFormat.format(date);
		postTime = strDate;
		
		postTime = "";
		heart = 0;
		comments = 0;
		comment = new ArrayList<String>();
	}

	public void setPostID(int id) {
		this.id = id;
	}

	public int getPostID() {
		return this.id;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getAuthor() {
		return this.author;
	}
	
	public void setBoard(String board) {
		this.board = board;
	}

	public String getBoard() {
		return this.board;
	}
	
	public void setPriority(int priority) {
		this.priority = priority;
	}

	public int getPriority() {
		return this.priority;
	}
	
	public void setContent(String content) {
		this.content = content;
	}

	public String getContent() {
		return this.content;
	}
	
	public void setPostTime(String postTime) {
		this.postTime = postTime;
	}

	public String getPostTime() {
		return this.postTime;
	}
	
	public void setHeart(int heart) {
		this.heart = heart;
	}
	
	public int getHeart() {
		return this.heart;
	}
	
	public void modifyHeart(int like) {
		if(like > 0)
			this.heart += 1;
		else if(like < 0)
			this.heart -= 1;
		else;
	}
	
	public void setComment(ArrayList<String> comments) {
		this.comment = comments;
	}
	
	public ArrayList<String> getComment() {
		return this.comment;
	}
	
	public void postComment(String comment) {
		this.comment.add(comment);
	}
}