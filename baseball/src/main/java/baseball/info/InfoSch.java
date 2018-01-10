package baseball.info;

import java.util.ArrayList;

import org.apache.ibatis.type.Alias;

@Alias("isch")
public class InfoSch {

	String kind, what;
	
	Integer cnt;
	
	ArrayList<InfoSch> list;
	
	

	public Integer getCnt() {
		return cnt;
	}

	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}

	public ArrayList<InfoSch> getList() {
		System.out.println("夸变 百府胶飘");
		return list;
	}

	public void setList(ArrayList<InfoSch> list) {
		this.list = list;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getWhat() {
		System.out.println("夸变 百坑");
		return what;
	}

	public void setWhat(String what) {
		this.what = what;
	}

	@Override
	public String toString() {
		return "InfoSch [kind=" + kind + ", what=" + what + ", cnt=" + cnt + ", list=" + list + "]";
	}
	
	
}
