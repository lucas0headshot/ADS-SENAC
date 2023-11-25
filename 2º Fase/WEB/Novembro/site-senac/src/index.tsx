import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';

import App from './App';
import ErrorBoundary from './pages/error_boundary';
import UpdateClient from './pages/update_client';

import reportWebVitals from './reportWebVitals';
import { RouterProvider, createBrowserRouter } from 'react-router-dom';



const routers = createBrowserRouter([
  {
    path: "/",
    element: <App />
  },

  {
    path: "/errorBoundary",
    element: <ErrorBoundary />
  },

  {
    path: "/update/:id",
    element: <UpdateClient />
  }
]);

const root = ReactDOM.createRoot(
  document.getElementById('root') as HTMLElement
);


root.render(
  <React.StrictMode>
    <RouterProvider router = {routers} />
  </React.StrictMode>
);


reportWebVitals();