package main;

import java.awt.Color;
import java.awt.Graphics;
import java.util.Random;

import javax.swing.JPanel;

public class GameScreen extends JPanel{
	
	private Random random;
	
	public GameScreen() {
		random = new Random();
		
	}
	
	public void paintComponent(Graphics g) {
		super.paintComponent(g);
		for (int i = 0; i < 20; i++) {
			for (int j = 0; j < 20; j++) {
				g.setColor(getRndColor());
				g.fillRect(32*i, 32*j, 32, 32);
				
			}
		}
	}
	
	private Color getRndColor() {
		int r = random.nextInt(256);
		int g = random.nextInt(256);
		int b = random.nextInt(256);
		return new Color(r,g,b);
	}
	

}
