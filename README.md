             | Wersja
------------ | -------------
Ruby         | 2.3.0
Rails        | 5.0.0

Kreator różnych elementów gier fabularnych, która ma dostarczać mistrzom gry prostych narzędzi do sprawnego przygotowywania sesji, oraz udostępniania ich graczom.

Aktualnie aplikacja pozwala na:
    - rejestracje nowych użytkowników
    - logowanie istniejących użytkowników
    - tworzenie nowych ras dla postaci
    - tworzenie postaci przy pomocy wcześniej stworzonych ras
    
Dodatkowe funkcje stworzone samodzielnie:
    - losowanie statystyk postaci na podstawie wybranej rasy (characters_controller): przy tworzeniu nowej postaci pobierana jest wybrana rasa, której nazwa zostaje porównana w instrukcji case. Ma ona za zadanie wywołanie odpowiedniej metody losującej statystyki. W momencie gdy rasa nie posiada własnej metody, wywoływana jest metoda domyślna dla rasy "Człowiek".
    - metody losujące statystyki (characters_controller): na podstawie podręcznika "Warhammer 2 Edycja" przypisuje postaciom współczynniki składające się z przypisanej wartości stałej zwiększonej o losowy rzut kością.
    - metoda rzutu kością (characters_controller): przyjmuje od 1 do 2 parametrów, w kolejności: liczba ścianek kostki, ilość kostek (domyślnie 1). Metoda symuluje rzut kostką o podanej liczbie ścianek i powtarza go rządaną ilość razy, zliczając wylosowaną liczbę oczek i zwracając efekt końcowy. 

Skład zespołu:

* Daniel Okoniewski - szkielet projektu, tabela rasy, metody dodatkowe kontrolera characters_controller, migracje bazy danych
* Filip Kamola - layout & lokalizacja
* Konrad Olobry – stworzenie tabeli postaci, klucze obce, migracje bazy danych

Projekt był tworzony na współdzielonym workspace w serwisie cloud9, przez co wszystkie commity, bez względu na to przez kogo były tworzone, na serwisie github były pushowane poprzez główne konto przypisane do workspace'a.