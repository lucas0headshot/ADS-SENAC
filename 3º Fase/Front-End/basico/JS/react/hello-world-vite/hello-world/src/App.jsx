import './App.css'
import Pai from './components/Pai';
import BomDia from './components/BomDia';
import HelloWorld from './components/HelloWorld';
import Descricao from './components/Descricao';
import Cachorro from './components/Cachorro';



function App() {
  return (
    <>
      <Pai/>
      <BomDia nome="Lucas"/>
      <HelloWorld/>
      <Descricao nome="Lucas" idade="18"/>
      <Cachorro nom="Bandi" raca="Chow Chow"/>
    </>
  );
}



export default App