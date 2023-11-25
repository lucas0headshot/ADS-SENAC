import './index.css';



function Header() {
    return (
        <header className="App-header">
        <a href="/">
          <img src="./images/logo.png" className="App-logo" alt="logo" />
        </a>

        <nav className="App-menu">
          <ul className='App-menu-list'>
            <li className='App-menu-list-item'>
              <a href="#o-senac">O Senac</a>
            </li>

            <li className='App-menu-list-item'>
              <a href="#unidades">Unidades</a>
            </li>

            <li className='App-menu-list-item'>
              <a href="#gratuidades">Gratuidades</a>
            </li>

            <li className='App-menu-list-item'>
              <a href="#educacao-a-distancia">Educação a Distância</a>
            </li>
          </ul>
        </nav>
      </header>
    );
};

export default Header;