<#import "parts/common.ftlh" as c>


<@c.page>
    <h5>${username}</h5>
    ${message?ifExists}
    <form  method="post">
        <div class="form-group">
                <label class="col-sm-2 col-form-label"> Password : </label>
        </div>
                <div class="col-sm-5">
                    <input type="password" name="password" class="form-control" placeholder="Password"/>
                </div>
                <br>
              <div class="form-group">
                    <label class="col-sm-2 col-form-label"> Email : </label>
              </div>
                    <div class="col-sm-5">
                        <input type="email" name="email" class="form-control" placeholder="some@some.com" value="${email!''}"/>
                    </div>
                    <br>
                  <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                  <button class="btn btn-primary" type="submit">Save</button>
    </form>
</@c.page>