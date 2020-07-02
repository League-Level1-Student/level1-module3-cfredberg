package _07_cow_timer;

import javax.swing.JOptionPane;

public class CowTimerRunner {
	public static void main(String[] args) throws InterruptedException {
		/* Make a CowTimer, set its time and start it.
		 * Use a short delay (seconds) when testing, then try with longer delays */
		int t = Integer.parseInt(JOptionPane.showInputDialog("Time:"));
		CowTimer c = new CowTimer(t);
		c.setTime();
		c.start();
	}
}
