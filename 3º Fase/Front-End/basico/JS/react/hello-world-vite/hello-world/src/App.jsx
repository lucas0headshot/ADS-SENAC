import './App.css'
import Pai from './components/Pai';
import BomDia from './components/BomDia';
import HelloWorld from './components/HelloWorld';
import Descricao from './components/Descricao';
import Cachorro from './components/Cachorro';
import UserInfoForm from './components/UserInfoForm';
import Button from './components/Button';
import PaiFunction from './components/PaiFunction';
import Form from './components/Form';
import RenderConditional from './components/RenderConditional';
import LoginButton from './components/LoginButton';
import MsgAlerta from './components/MsgAlerta';
import NumberList from './components/NumberList';
import BotaoEstilizado from './components/BotaoEstilizado';
import BotaoAzul from './components/BotaoAzul';



function App() {
  const nomes = ["Rapha", "Juan", "Lucas"];
  console.log('Nomes maísculos:', nomes.map((nome) => nome.toUpperCase()));

  const usuarios = [
    {nome: "Rapha", idade: 23},
    {nome: "Juan", idade: 21},
    {nome: "Lucas", idade: 18}
  ];
  console.log('Usuários maiores de idade:', usuarios.filter((usuario) => usuario.idade >= 18));

  console.log('Soma das idades dos usuários:', usuarios.reduce((total, usuario) => total + usuario.idade));

  console.log('Usuários ordenados:', usuarios.sort((a, b) => a.nome.localeCompare(b.nome)));

  console.log('Usuário Lucas:', usuarios.find((usuario) => usuario.nome === "Lucas"));

  console.log('ID usuário maior que 21 anos:', usuarios.findIndex((usuario) => usuario.idade > 21));



  return (
    <>
      <Pai/>
      <BomDia nome="Lucas"/>
      <HelloWorld/>
      <Descricao nome="Lucas" idade="18"/>
      <Cachorro nom="Bandi" raca="Chow Chow"/>

      <UserInfoForm/>

      <Button/>

      <PaiFunction/>

      <Form/>

      <RenderConditional user={'Lucas'}/>

      <LoginButton loggedId={false}/>

      <MsgAlerta msg={'aviso'}/>

      <NumberList Numbers={[1, 2, 3, 4, 5, 6, 7]}/>

      <BotaoEstilizado/>

      <BotaoAzul/>
    </>
  );
}



export default App