package com.example;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GetJavaDataCtrl.do")
public class GetJavaDataCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetJavaDataCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] names = {"김태엽","한태헌","김도연","박평화"};
		
		ArrayList<String> list = new ArrayList<String>();
		list.add("고유진");
		list.add("한시연");
		list.add("남송윤");
		list.add("강병수");
		
		HashMap<String, String> map = new HashMap<>();
		map.put("name1", "조민재");
		map.put("name2", "이하영");
		map.put("name3", "김연정");
		map.put("name4", "김지훈");
		
		HashMap<String, String> map2 = new HashMap<>();
		map2.put("name", "김지은");
		map2.put("age", "59");
		map2.put("height", "184");
		
		Human vo = new Human();
		vo.setName("안효준");
		vo.setCountry("대한민국");
		vo.setAge(74);
		vo.setHobby("총싸움");
		
		ArrayList<Human> hList = new ArrayList<Human>();
		Human human = new Human();
		human.setName("정진석");
		human.setAge(97);
		human.setCountry("콩고");
		human.setHobby("폭포에서 뛰어내리기");
		hList.add(human);
		
		Human human2 = new Human();
		human2.setName("정병진");
		human2.setAge(88);
		human2.setCountry("이집트");
		human2.setHobby("사막에서 바늘찾기");
		hList.add(human2);
		
		Human human3 = new Human();
		human3.setName("박정우");
		human3.setAge(75);
		human3.setCountry("리비아");
		human3.setHobby("두문불출");
		hList.add(human3);		
		
		request.setAttribute("names", names);
		request.setAttribute("list", list);
		request.setAttribute("map", map);
		request.setAttribute("map2", map2);
		request.setAttribute("vo", vo);
		request.setAttribute("humanList", hList);
		//06getJavaData.jsp
		RequestDispatcher view = request.getRequestDispatcher("06getJavaData.jsp");
		view.forward(request, response);
	}
}