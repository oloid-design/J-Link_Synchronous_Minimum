package com.oloid_design.jlink;
 
import javax.swing.JFrame;
import javax.swing.JOptionPane;

import com.ptc.cipjava.jxthrowable;

public class JLinkSynchronousMinimumLauncher {
	//public static String MSG_FILE = "msg_fks83h6k.txt";
 
	// This is the start method defined in portk.dat (start)
	public static void start() throws jxthrowable {
		JFrame jFrame;
		jFrame = new JFrame();
		jFrame.setAlwaysOnTop(true);

		JOptionPane.showMessageDialog(jFrame, "J-Link Synchronous Minimum loaded.");
	}

	
	// Stop Methode wie in der Datei portk.dat eingetrage (stop)
	public static void stop() {
	}
	
}

