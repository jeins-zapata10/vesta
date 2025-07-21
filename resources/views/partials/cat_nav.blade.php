<div id="cat-nav">
    <div class="container">
        <nav class="navbar navbar-default">
            <!-- Botón para móviles -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#cat-nav-mega">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>

            <!-- Menú principal -->
            <div class="collapse navbar-collapse" id="cat-nav-mega">
                <ul class="nav navbar-nav">
                    @foreach ($categorias as $categoria)
                        <li class="dropdown menu-large">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                aria-expanded="false">
                                {{ $categoria->nombreCategoria }} <i class="fa fa-angle-down"></i>
                            </a>
                            <ul class="dropdown-menu megamenu" role="menu">
                                <li>
                                    <div class="">
                                        @foreach ($categoria->subcategorias as $subcategoria)
                                            <div class="mega-sub">
                                                <div class="mega-sub-title">{{ $subcategoria->nombreSubCat }}</div>
                                                <ul>
                                                    <!-- Lista de productos -->
                                                    @foreach ($subcategoria->productos as $producto)
                                                        <li>
                                                            <a href="/productos/{{ $producto->idProducto }}">
                                                                {{ $producto->nombreProducto }}
                                                            </a>
                                                        </li>
                                                    @endforeach
                                                </ul>
                                            </div>
                                        @endforeach
                                    </div>
                                </li>
                            </ul>
                        </li>
                    @endforeach
                </ul>
            </div>
        </nav>
    </div>
</div>
