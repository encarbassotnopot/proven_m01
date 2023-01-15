import java.util.InputMismatchException;
import java.util.Scanner;

/**
 * Calcula (i mostra) la suma dels parells i senars en el rang entrat per l'usuari.
 * @author eina
 */

public class sumaParellSenar {
	public static void main(String[] args) {
		int parells = 0;
		int imparells = 0;
		int min = 0;
		int max = 0;
		boolean correcte = false;

		Scanner lector = new Scanner(System.in);
		try {
			System.out.print("Entra el valor mínim: ");
			min = lector.nextInt();

			System.out.print("Entra el valor màxim: ");
			max = lector.nextInt();

			if (min < max) {
				correcte = true;
			} else {
				System.out.println("El valor mínim ha de ser inferior al màxim.");
			}
		} catch (InputMismatchException e) {
			System.out.println("No s'ha pogut llegir el valor.");
		}

		if (correcte) {
			for (int i = min; i <= max; i++) {
				if (i %2 == 0) {
					parells += i;
				} else {
					imparells += i;
				}
			}
			System.out.printf("La suma dels nombres parells compresos entre %d i %d és %d i la dels imparells %d\n", min, max, parells, imparells);
		}
	}
}
