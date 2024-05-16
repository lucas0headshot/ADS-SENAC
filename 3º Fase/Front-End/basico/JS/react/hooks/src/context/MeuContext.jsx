import { createContext } from 'react'
import { useState } from 'react'

export const MeuContext = createContext();

export const MeuContextProvider = ( { children }) => {

    const [mensagem, setMensagem] = useState("mensagem inicial")

    const valorDoContexto = {
        mensagem,
        setMensagem
    }
  return (
    <MeuContext.Provider value={valorDoContexto}>
        {children}
    </MeuContext.Provider>
  )
}

export default MeuContext