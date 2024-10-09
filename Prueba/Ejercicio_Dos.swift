
import Foundation

func validarnumero() -> Int? {
    while true {
        print("Ingrese un numero, de 1 a 6")
        if let input = readLine(), let number = Int(input), number >= 1 && number <= 6 {
            return number
        } else {
            print("Número no válido, intente de nuevo")
        }
    }
}

func NumeroRandom() -> Int {
    return Int.random(in: 1...6)
}

func Final() {
    let NumeroAleatorio = NumeroRandom()
    let Numeroingresado = validarnumero()
    while true {
        if let numeroIngresado = Numeroingresado {
            if numeroIngresado == NumeroAleatorio {
                print("Boom")
                break
            } else {
                print("Sigue jugando")
                return Final()
            }
        }
    }
}

