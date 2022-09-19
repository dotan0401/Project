<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="search__area">
    <div class="container" >
        <div class="row" >
            <div class="col-md-12" >
                <div class="search__inner">
                    <form action="/Project4/searchName" method="post">
                        <input placeholder="Tìm kiếm... " type="text" name="ten">
                        <div class="search__close__btn">
                            <button  type="submit" name="searchName" value="search"></button>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>