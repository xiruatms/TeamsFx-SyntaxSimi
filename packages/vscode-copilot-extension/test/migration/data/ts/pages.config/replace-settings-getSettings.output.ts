import { pages } from "@microsoft/teams-js";
import * as msft from "@microsoft/teams-js";

//TODO: Convert callback to promise, for more info, please refer to https://aka.ms/ms-copilot-callback-to-promise.
msft.pages.config.getConfig();

//TODO: Convert callback to promise, for more info, please refer to https://aka.ms/ms-copilot-callback-to-promise.
pages.config.getConfig();

let settings: any;
settings.getSettings();
