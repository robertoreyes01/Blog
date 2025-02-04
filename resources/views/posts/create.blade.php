<x-app-layout>
<h1>Formulario</h1>

<form action="/posts" method="post">
    @csrf
    <label for="title">
        Titulo:<input type="text" name="title" id="title">
    </label>
    <br>
    <br>
    <label for="category">
        Categoria:<input type="text" name="category" id="category">
    </label>
    <br>
    <br>
    <label for="content">
        Contenido:<textarea name="content" id="content"></textarea>
    </label>
    <br>
    <br>
    <button type="submit">Enviar</button>
</form>
</x-app-layout>