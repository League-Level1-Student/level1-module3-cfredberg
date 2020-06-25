package _06_gridworld;

import java.awt.Color;
import java.util.Random;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class runner {
	public static void main(String[] args) {
		World world = new World();
		world.show();
		Bug bug = new Bug();
		Bug bug1 = new Bug(Color.BLUE);
		Random ran = new Random();
		Location loc = new Location(1, 1);
		world.add(loc, bug);
		int x = ran.nextInt(9);
		int y = ran.nextInt(9);
		world.add(new Location(x, y), bug1);
		bug1.turn();
		bug1.turn();
		for (int i = 0; i < 10; i++) {
			for (int i1 = 0; i1 < 10; i1++) {
				Location loc1 = new Location(i, i1);
				Flower fl = new Flower();
				world.add(loc1, fl);
				System.out.println(i1 + ", " + i);
			}
		}
	}
}
