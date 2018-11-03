<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Elements.aspx.cs" Inherits="ExerciseTracker.Generic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- One -->
			<section id="one" class="wrapper">
                
				<div class="inner flex flex-3">
					<div class="flex-item left">
						<div class="trigger"> 
							<h3>Exercise improves physical health</h3>
							<p>Physically active individuals have a much better health outlook than their sedentary peers. </p>
						</div>
						<div>
							<h3>Exercise improves mood</h3>
							<p>Exercise helps people to relax, improves sleep and reduces muscular tension. </p>
						</div>
					</div>
					<div class="flex-item image fit round">
						<img src="image/tracker.jpg" alt="" />
					</div>
					<div class="flex-item right">
						<div>
							<h3>Exercise improves self-confidence</h3>
							<p>One of the reasons many individuals do not attempt an exercise program is because they feel they are not very athletic or coordinated.</p>
						</div>
						<div>
							<h3>Exercise increases energy and vitality feelings</h3>
							<p>Sedentary individuals often complain of being too tired to work out.</p>
						</div>
					</div>
				</div>
			</section>
</asp:Content>
