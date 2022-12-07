package prototype;

import java.util.ArrayList;
import java.util.List;
//프로토타입 패턴 : 객체를 생성하는데 많이 시간과 자원이 들 경우가 많다.
//이러한 경우 비슷한 객체가 있다면, 원본 객체를 복제하여 새로운 객체를 만들기만하면 시간과 자원을 절약할 수 있을 것이다.
//이때를 대비해 언제든지 복제가 가능한 샘플 클래스(프로토타입)를 만들어  놓고 있다가 필요한 시기에
//쉽게 프로젝트를 진행할 수 있도록 하는 것이 프로토타입 패턴이다.
public class Employees implements Cloneable{

    private List<String> empList;
	
    public Employees(){
        empList = new ArrayList<String>();
    }
	
    public Employees(List<String> list){
        this.empList=list;
    }
    
    public void loadData(){
    	//데이터베이스에서 모든 직원을 읽고 목록에 넣기
        empList.add("Pankaj");
        empList.add("Raj");
        empList.add("David");
        empList.add("Lisa");
    }
	
    public List<String> getEmpList() {
        return empList;
    }

    @Override
    public Object clone() throws CloneNotSupportedException{
        List<String> temp = new ArrayList<String>();
        for(String s : this.empList){
            temp.add(s);
        }
        return new Employees(temp);
    }
	
}
