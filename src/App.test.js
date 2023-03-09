import { render, screen } from '@testing-library/react';
import App from './App';

test('renders Welcome to Arthy App link', () => {
  render(<App />);
  const linkElement = screen.getByText(/Welcome to Arthy's App/i);
  expect(linkElement).toBeInTheDocument();
});
