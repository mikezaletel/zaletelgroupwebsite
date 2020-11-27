@def title = "Members"
@def hascode = false
@def date = Date(2019, 3, 22)
@def rss = "group member description"

@def tags = String[]

# Members
\newcommand{\insertprofile}[3]{
@@row
@@container
@@left ![](/assets/member_profile/!#1/picture.jpg) @@
@@
**!#2**

email:!#3

\textinput{/assets/member_profile/!#1/profile.txt}
~~~
<div style="clear: both"></div>
~~~
@@
}


\insertprofile{iguana}{Marine iguana}{iguana (at) nowhere.tv}

@@row
@@container
@@left ![](/assets/member_profile/iguana/picture.jpg) @@
@@
Marine iguanas are **truly splendid** creatures. They're not found in equations like $\exp(-i\pi)+1$. But they're still quite cool.
~~~
<div style="clear: both"></div>
~~~
@@


    @@row
    @@container
    @@left ![](/assets/member_profile/iguana/picture.jpg) @@
    @@
    Marine iguanas are **truly splendid** creatures. They're not found in equations like $\exp(-i\pi)+1$. But they're still quite cool.
    ~~~
    <div style="clear: both"></div>
    ~~~
    @@