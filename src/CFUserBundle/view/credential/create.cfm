<cfoutput>
	<!-- add menu to page -->
	#data['load'].view('default/menu.template')#

	<div class="row" style="padding-top:3%; text-align:center;">
		 <h4>Login user</h4>
		 <div style='width:50%; background: aqua; margin:auto !important; position:relative; height:none;'>
		 	<form class="col s12" method="post" action="">
			    <div class="row" style="text-align:left;">

			      <div class="row">
			        <div class="input-field col s12">
						<input id="stFullName" type="text" class="validate" name='stFullName' />
			          	<label for="text">Full Name</label>
			        </div>
			        #data['form'].setError(data, 'stFullName')#
			      </div>

			      <div class="row">
			        <div class="input-field col s12">
						<input id="stEmail" type="text" class="validate" name='stEmail' />
			          	<label for="stEmail">E-mail</label>
			        </div>
			        #data['form'].setError(data, 'stEmail')#
			      </div>

			       <div class="row">
			        <div class="input-field col s12">
			          <input id="stPassw" type="password" class="validate" name='stPassword'>
			          <label for="password">Password</label>
			        </div>
			        #data['form'].setError(data, 'stPassword')#
			       </div>

			    </div>

			    <button class="btn waves-effect waves-light" type="submit" name="action">Salvar
				    <i class="material-icons right">send</i>
				</button>
		    </form>
		</div>
	</div>
</cfoutput>
