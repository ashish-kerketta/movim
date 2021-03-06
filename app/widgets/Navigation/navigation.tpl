<ul class="list active" dir="ltr">
    {if="$c->getUser()->hasPubsub()"}
    <a class="classic"
       href="{$c->route('news')}"
       title="{$c->__('page.news')}">
        <li {if="$page == 'news' || $page == 'post'"}class="active"{/if}>
            <span class="primary icon">
                <i class="material-icons">receipt</i>
                <span data-key="news" class="counter"></span>
            </span>
            <div>
                <p class="normal">{$c->__('page.news')}</p>
            </div>
        </li>
    </a>
    {/if}
    <a class="classic"
       href="{$c->route('community')}"
       title="{$c->__('page.communities')}">
        <li {if="$page == 'community'"}class="active"{/if}>
            <span class="primary icon"><i class="material-icons">group_work</i></span>
            <div>
                <p class="normal">{$c->__('page.communities')}</p>
            </div>
        </li>
    </a>
    <a class="classic" href="{$c->route('chat')}"
       id="chatbutton"
       title="{$c->__('page.chats')}">
        <li {if="$page == 'chat'"}class="active"{/if}>
            <span class="primary icon" id="chatcounter">
                {autoescape="off"}
                    {$chatCounter}
                {/autoescape}
            </span>
            <div>
                <p class="normal">{$c->__('page.chats')}</p>
            </div>
        </li>

    </a>
</ul>

<ul class="list divided oppose active" dir="ltr">
    <a class="classic"
       href="#">
        <li onclick="Notifications_ajaxRequest()"
            title="{$c->__('notifs.title')}"
        >
            <span class="primary icon">
                <i class="material-icons">notifications</i>
                <span class="counter notifications"></span>
            </span>
            <div>
                <p class="normal">{$c->__('notifs.title')}</p>
            </div>
        </li>
    </a>
    <li onclick="Search_ajaxRequest()"
        title="{$c->__('button.search')}"
    >
        <span class="primary icon">
            <i class="material-icons">search</i>
        </span>
        <div>
            <p class="normal">{$c->__('button.search')}</p>
        </div>
    </li>
    <a class="classic"
       href="{$c->route('conf')}"
       title="{$c->__('page.configuration')}">
        <li {if="$page == 'conf'"}class="active"{/if}>
            <span class="primary icon">
                <i class="material-icons">settings</i>
            </span>
            <div>
                <p class="normal">{$c->__('page.configuration')}</p>
            </div>
        </li>
    </a>
    <a class="classic"
        href="{$c->route('help')}"
        title="{$c->__('page.help')}">
        <li {if="$page == 'help'"}class="active"{/if}>
            <span class="primary icon">
                <i class="material-icons">help</i>
            </span>
            <div>
                <p class="normal">{$c->__('page.help')}</p>
            </div>
        </li>
    </a>
    <a class="classic on_android" href="movim://changepod">
        <li>
            <span class="primary icon bubble"><i class="material-icons">dns</i></span>
            <div>
                <p class="normal">{$c->__('global.change_pod')}</p>
            </div>
        </li>
    </a>
    <a class="classic on_mobile" href="#">
        <li onclick="MovimTpl.toggleMenu()">
            <span class="primary icon bubble"><i class="material-icons">arrow_back</i></span>
            <div>
                <p class="normal">{$c->__('button.close')}</p>
            </div>
        </li>
    </a>
    <li class="on_desktop"
        onclick="Presence_ajaxAskLogout()"
        title="{$c->__('status.disconnect')}">
        <span class="primary icon"><i class="material-icons">exit_to_app</i></span>
        <div>
            <p class="normal">{$c->__('status.disconnect')}</p>
        </div>
    </li>
</ul>
