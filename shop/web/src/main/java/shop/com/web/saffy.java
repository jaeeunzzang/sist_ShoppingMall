package shop.com.web;

public class saffy {
	public void stack() {
		int a1[] = { 5, 6, 13, 14, 4 };
		int a2[] = { 4, 2, 5, 2, 18, 12, 1 };
		int a11[] = { 4, 2, 5, 3, 1 };
		int a12[] = { 11, 18, 3, 23, 16, 15, 6, 20, 12, 5 };
		int a3[] = { 20, 5, 13, 38, 22, 13, 26, 16, 38, 28, 4, 6, 25 };
		int a[] = { 21, 18, 5, 12, 7, 39, 1, 17, 39, 2, 42, 27, 32, 6, 20, 22 };
		int cnt = 0;
		for (int i = 0; i < a.length; i++) {
			for (int j = 0; j < a.length; j++) {
				for (int k = 0; k < a.length; k++) {
					if (i < j && j < k && a[i] < a[j] && a[i] > a[k]) {
						cnt++;
						System.out.println("i:" + i + "j:" + j + "k:" + k);
						System.out.println("cnt:" + cnt);
					}
				}
			}
		}
		System.out.println(cnt);
	}

	public static void main(String[] args) {
		int cnt = 0;
		int a[] = { 0, 1, 1, 0, 0, 0, 0, 1, 0, 0 };
		for (int i = 0; i < a.length; i++) {
			for (int j = i + 1; j < a.length; j++) {
				if (a[i] == 0) {
					cnt = cnt + 1;
					if (a[i] == a[j]) {
						cnt = cnt + 1;
					}
				}
				if (a[i] == 1) {
					cnt = cnt - 1;
					if (a[i] == a[j]) {
						cnt = cnt - 1;
					}
				}
			}

		}
		System.out.println(cnt);
	}
}
