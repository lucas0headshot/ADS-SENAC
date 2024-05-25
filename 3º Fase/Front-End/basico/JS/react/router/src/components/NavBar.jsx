import { Link } from "react-router-dom";

const NavBar = () => {
  return (
    <header>
      <nav>
        <ul>
          <li>
            <Link to='/'>Home</Link>
          </li>
          <li>
            <Link to='/sobre'>Sobre</Link>
          </li>
          <li>
            <Link to='/contato'>Contato</Link>
          </li>

          <li>
            <Link to="/login">Entrar</Link>
          </li>
        </ul>
      </nav>
    </header>
  );
};

export default NavBar;