import Foundation
// Función para leer un número desde la consola
func leerNumero(indice: Int) -> Double {
    while true {
        print("Introduce el número \(indice): ", terminator: "")
        if let entrada = readLine(), let numero = Double(entrada) {
            return numero
        } else {
            print("Entrada no válida. Por favor, introduce un número.")
        }
    }
}

// Función para calcular la media de un array de números
func calcularMedia(numeros: [Double]) -> Double {
    let suma = numeros.reduce(0, +)
    return suma / Double(numeros.count)
}

// Función principal para ejecutar el programa
func ejecutarPrograma() {
    var numeros: [Double] = []

    for i in 1...5 {
        let numero = leerNumero(indice: i) // Esta función siempre devuelve un número válido
        numeros.append(numero) // Se añade el número directamente
    }

    let media = calcularMedia(numeros: numeros)
    print("La media de los números introducidos es: \(media)")
}


