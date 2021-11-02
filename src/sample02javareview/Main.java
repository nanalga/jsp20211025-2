package sample02javareview;

public class Main {
	public static void main(String[] args) {
		MyRequest request = new MyRequest();
		
		request.setName("trump");
		
		myInclude(request, new Sub());
		
	}
	
	private static void myInclude(MyRequest request, Sub sub) {
		sub.print(request);
	}
	
}
